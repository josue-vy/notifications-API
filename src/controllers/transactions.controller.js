import { getConnection } from "./../database/database";
//transaccion
const getAllTransactions = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("SELECT id, cuenta_origen,cuenta_destino,monto,fecha_hora FROM notificaciones_transaccion");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
const addTransaccion = async (req, res) => {
    try{

        const {cuenta_origen,cuenta_destino,monto,fecha_hora} = req.body;
    
        if (cuenta_origen === undefined || cuenta_destino === undefined || monto === undefined|| fecha_hora === undefined) {
        res.status(400).json({ message: "Bad Request. Please fill all field." });
    }
        const transactions = {cuenta_origen,cuenta_destino,monto,fecha_hora};
        const connection = await getConnection();
        await connection.query("INSERT INTO notificaciones_transaccion SET ?", transactions);
        res.json({ message: "Transactions added" });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

export const methods ={
    addTransaccion,
    getAllTransactions
};