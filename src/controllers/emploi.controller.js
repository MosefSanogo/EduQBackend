import emploiService from "../services/emploi.service.js"

const getEmploi = async (req,res)=>{
    try {
        const {id,an} = req.params
        const data = await emploiService.getEmploi(id,an)
        res.status(200).json(data)
    } catch (error) {
        console.log(error)
        res.status(500).json({
            message: error.message
        });
        
    }
}

const getTodayEmploi = async (req,res)=>{
    try {
        const {id,an} = req.params
        const data = await emploiService.getTodayEmploi(id,an)
        res.status(200).json(data)
    } catch (error) {
        console.log(error)
        res.status(500).json({
            message: error.message
        });
        
    }
}

export default{
    getEmploi,
    getTodayEmploi
}