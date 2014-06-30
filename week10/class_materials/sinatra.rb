require 'sinatra'

get '/' do
 "<h1>NIKKY IS AWESOME YAY WHAT A CHAMP</h1>"
 "<a href=\"coolest\">Find out why"
end

get '/coolest' do
	"Because he is, fool"
end

get '/yousuck' do
  stream do |out|
    out << "fail\n"
    sleep 0.5
    out << "\nsauce"
    sleep 1
  end

end

get '/pledge' do
%Q{

<html>
<head>
<title>KUOW Pledge Drive</title>
<style type="text/css">
<!--
/**
 *    Real-World CSS
 *    by @visualidiot. Licensed under WTPFL.
 */
 
/* @group Blink */

.blink {
    -webkit-animation: blink .75s linear infinite;
    -moz-animation: blink .75s linear infinite;
    -ms-animation: blink .75s linear infinite;
    -o-animation: blink .75s linear infinite;
    animation: blink .75s linear infinite;
}

@-webkit-keyframes blink {
    0% { opacity: 1; }
    50% { opacity: 1; }
    50.01% { opacity: 0; }
    100% { opacity: 0; }
}

@-moz-keyframes blink {
    0% { opacity: 1; }
    50% { opacity: 1; }
    50.01% { opacity: 0; }
    100% { opacity: 0; }
}

@-ms-keyframes blink {
    0% { opacity: 1; }
    50% { opacity: 1; }
    50.01% { opacity: 0; }
    100% { opacity: 0; }
}

@-o-keyframes blink {
    0% { opacity: 1; }
    50% { opacity: 1; }
    50.01% { opacity: 0; }
    100% { opacity: 0; }
}

@keyframes blink {
    0% { opacity: 1; }
    50% { opacity: 1; }
    50.01% { opacity: 0; }
    100% { opacity: 0; }
}

/* @end */
/* @group Nausea */

.nausea {
    display: inline-block;
    position: relative;

    -webkit-animation: nausea .25s linear infinite;
    -moz-animation: nausea .25s linear infinite;
    -ms-animation: nausea .25s linear infinite;
    -o-animation: nausea .25s linear infinite;
    animation: nausea .25s linear infinite;
}

@-webkit-keyframes nausea {
    0% { -webkit-transform: rotate(0deg); }
    50% { -webkit-transform: scale(1.5) rotate(180deg); }
    100% { -webkit-transform: scale(.8) rotate(360deg); }
}
@-moz-keyframes nausea {
    0% { -moz-transform: rotate(0deg); }
    50% { -moz-transform: scale(1.5) rotate(180deg); }
    100% { -moz-transform: scale(.8) rotate(360deg); }
}
@-ms-keyframes nausea {
    0% { -ms-transform: rotate(0deg); }
    50% { -ms-transform: scale(1.5) rotate(180deg); }
    100% { -ms-transform: scale(.8) rotate(360deg); }
}
@-o-keyframes nausea {
    0% { -o-transform: rotate(0deg); }
    50% { -o-transform: scale(1.5) rotate(180deg); }
    100% { -o-transform: scale(.8) rotate(360deg); }
}
@keyframes nausea {
    0% { transform: rotate(0deg); }
    50% { transform: scale(1.5) rotate(180deg); }
    100% { transform: scale(.8) rotate(360deg); }
}
    
/* @end */

-->
</style>
</head>
<body>
	<pre>+-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-+
<span class="nausea">|</span>                __  ___  __    __    ______   ____    __    ____               <span class="nausea">|</span>
|               |  |/  / |  |  |  |  /  __  \  \   \  /  \  /   /               |
<span class="nausea">|</span>               |  '  /  |  |  |  | |  |  |  |  \   \/    \/   /                <span class="nausea">|</span>
|               |    <   |  |  |  | |  |  |  |   \            /                 |
<span class="nausea">|</span>               |  .  \  |  `--'  | |  `--'  |    \    /\    /                  <span class="nausea">|</span>
|               |__|\__\  \______/   \______/      \__/  \__/                   |
<span class="nausea">|</span>            .______    __       _______  _______   _______  _______            <span class="nausea">|</span>
|            |   _  \  |  |     |   ____||       \ /  _____||   ____|           |
<span class="nausea">|</span>            |  |_)  | |  |     |  |__   |  .--.  |  |  __  |  |__              <span class="nausea">|</span>
|            |   ___/  |  |     |   __|  |  |  |  |  | |_ | |   __|             |
<span class="nausea">|</span>            |  |      |  `----.|  |____ |  '--'  |  |__| | |  |____            <span class="nausea">|</span>
|            | _|      |_______||_______||_______/ \______| |_______|           | 
<span class="nausea">|</span>                _______  .______       __  ____    ____  _______               <span class="nausea">|</span>
|               |       \ |   _  \     |  | \   \  /   / |   ____|              |
<span class="nausea">|</span>               |  .--.  ||  |_)  |    |  |  \   \/   /  |  |__                 <span class="nausea">|</span>
|               |  |  |  ||      /     |  |   \      /   |   __|                |
<span class="nausea">|</span>               |  '--'  ||  |\  \----.|  |    \    /    |  |____               <span class="nausea">|</span>
|               |_______/ | _| `._____||__|     \__/     |_______|              |
<span class="nausea">|</span>                                                                               <span class="nausea">|</span>
|                          Strength Through Unity                               |
<span class="nausea">|</span>                        Unity Through Public Radio                             <span class="nausea">|</span>
+-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-<span class="blink">-</span>-+

</pre>
</body>
}
end