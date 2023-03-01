using AppCrud.Models;
using AppCrud.Service.ClotheService;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using System;

namespace AppCrud.ApiController
{

    [ApiController]
    [Route("api/[controller]")]
    public class ClothesController : ControllerBase
    {
        readonly IClothesService ClothesService;
        public ClothesController(IClothesService ClothesService)
        {
            this.ClothesService = ClothesService;
        }


        [HttpGet]
        public IActionResult Get()
        {
            return Ok(ClothesService.GetList());
        }
        [HttpGet("name")]
        public IActionResult GetLike(String name)
        {
            return Ok(ClothesService.GetListLike(name));
        }
        [HttpGet("id")]
        public IActionResult GetById(int id)
        {
            return Ok(ClothesService.GetById(id));
        }

        [HttpPost]
        public async Task<IActionResult> Insert(Clothes clothesEx)
        {
            return Ok(ClothesService.Add(clothesEx));
        }
        [HttpPut]
        public async Task<IActionResult> Update(int id, Clothes clothesEx)
        {
            return Ok(ClothesService.Update(id, clothesEx));
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            return Ok(ClothesService.Delete(id));
        }
    }
}
