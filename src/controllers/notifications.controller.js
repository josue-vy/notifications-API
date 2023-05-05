import { getConnection } from "./../database/database";
const getAllNotifications = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("SELECT Id, email, asunto, mensaje FROM notificaciones");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
const getOneNotifications = async (req, res) => {
    try {
        const { id } = req.params;
        const connection = await getConnection();
        const result = await connection.query("SELECT Id, email, asunto, mensaje FROM notificaciones WHERE id = ?", id);
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const addNotifications = async (req, res) => {
    try {
        const { email, asunto,mensaje } = req.body;

        if (email === undefined || asunto === undefined || mensaje === undefined) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }

        const notifications = { email, asunto,mensaje };
        const connection = await getConnection();
        await connection.query("INSERT INTO notificaciones SET ?", notifications);
        res.json({ message: "Notifications added" });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};


export const methods ={
    getAllNotifications,
    getOneNotifications,
    addNotifications,
};