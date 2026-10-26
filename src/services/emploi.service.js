import emploiModel from "../models/emploi.model.js"

const getEmploi = async (idP,an)=>{
    return await emploiModel.getEmploi(idP,an)
}

const getTodayEmploi = async (idP,an)=>{
    return await emploiModel.getTodayEmploi(idP,an)
}

export default{
    getEmploi,
    getTodayEmploi
}