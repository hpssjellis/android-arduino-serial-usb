document.addEventListener("deviceready", onDeviceReady, true);

function onDeviceReady(){
    document.addEventListener("backbutton", BackKeyDown, true);
}

function BackKeyDown(){
    window.location = "index.html";
    navigator.notification.alert();
    //navigator.app.exitApp();  // For Exit Application
}

function onLoad(){
    document.addEventListener("deviceready", onDeviceReady, true);
}

function write_to_screen(msg, clr){
    $("#response_div").append("<p style='color:" + clr + "'>" + msg + "</p>");
    $("#response_div").scrollTop = $("#response_div").scrollHeight ;
    $("#response_div").animate({scrollTop: $("#response_div").prop("scrollHeight")}, 1);
}

$(document).ready(function(){

    var container_div = $('#container_div').height();
    remaining_height = parseInt($(window).height() - container_div - 100);
    $('#response_div').height(remaining_height);

    serial.registerReadCallback(
        function success(data){
            var view = new Uint8Array(data);
            console.log(view);
            write_to_screen("Serial Read Callback", "green");

            var str = "";
            var arr = [];
            if(view.length >= 1){
                for(var i=0; i<view.length; i++){

                    // str += String.fromCharCode(view[i]);

                    var temp_str = String.fromCharCode(view[i]);
                    var str_esc = escape(temp_str);
                    str += unescape(str_esc);
                    
                    if(view[i] == 13){
                        //Write to Screen, Push to Array and Initialze the scope Variable again.
                        write_to_screen(str, "black");
                        arr.push(str);
                        str = "";
                    }
                }
            }
        },
        function error(){
            new Error("Failed to register read callback");
        }
    );

    $("#connect_button").click(function(){
        serial.requestPermission(
            function success(){
                write_to_screen("Success Permission", "green");

                // BaudRate for our Chip: 115200, Adruino: 9600 
                var opts = {"baudRate":9600, "dataBits":8, "stopBits":1, "parity":0, "dtr":false}
                serial.open(opts, 
                    function success(){
                        write_to_screen("Success OPEN", "green");
                    }, function error(evt){
                        write_to_screen("Error OPEN", "red");
                        write_to_screen(evt, "red");
                    }
                );
            }, 
            function error(evt){
                write_to_screen("Error: " + evt, "red");
            }
        );
    });

    $("#send_command_button").click(function(){
        write_to_screen("~~~Sending Command", "blue");

        var data = $("#command_tb").val() + "\n";
        serial.write(data, function success(){
            write_to_screen("Success Write: " + data, "green");
        }, function error(evt){
            write_to_screen("Error Write, Please Connect First", "red");
            write_to_screen(evt, "red");
        });

        serial.read(function success(buffer){
            write_to_screen("Success Read", "green");
            var new_buf = new Uint8Array(buffer);
        }, function error(evt){
            write_to_screen("Error Read", "red");
            write_to_screen(evt, "red");
        });
    });


    $("#close_button").click(function(){
        serial.close(
            function success(){
                alert("Connection Closed, Successfully");
            }, 
            function error(){
                alert("Error occured while Closing the Connection");
            }
        );
    });

});
