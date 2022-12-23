//const winstonModule = require("winston");
const {createLogger, transports, format} = require("winston");

//const loggerWinston = winstonModule.createLogger({
const loggerWinston = createLogger({
    format: format.combine(
        format.label({ label:'index.js'}),//Añade una etiqueta en cada impresion de log indicando el texto 'index.js'
        format.timestamp({ 
            format:'DD/MMMM/YYYY hh:mm:ss A'
        }),//Añade la fecha en cada impresion de log
        //format.prettyPrint()
        format.printf(({level, message, timestamp}) => 
            `[${level}] [${timestamp}] [${message}]`
        )
    ),
    transports:[
        //Se envien logs a console
        //new winstonModule.transports.Console(),
        new transports.Console({
            level: "debug",
        }),

        new transports.File({
            level: "error",
            filename: './logErrores.txt',
        }),

        new transports.File({
            level: "info",
            filename: './logInfo.txt',
        })
    ],
});

module.exports = loggerWinston;

//momentJS