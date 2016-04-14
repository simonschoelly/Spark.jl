
function init()
    envcp = get(ENV, "CLASSPATH", "")
    sparkjlassembly = Pkg.dir("Spark", "jvm", "sparkjl", "target", "sparkjl-0.1-assembly.jar")
    classpath = "$envcp:$sparkjlassembly"
    try
        # prevent exceptions in REPL on code reloading
        JavaCall.init(["-ea", "-Xmx1024M", "-Djava.class.path=$classpath"])
    end
end

init()
