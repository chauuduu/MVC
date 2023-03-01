using AppCrud.Models;
using AppCrud.Service.TypeClotheService;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace AppCrud.ApiController
{
    [ApiController]
    [Route("api/[controller]")]
    public class TypeClothesController : ControllerBase
    {
        readonly ITypeClothesService TypeClothesService;
        public TypeClothesController(ITypeClothesService TypeClothesService)
        {
            this.TypeClothesService = TypeClothesService;
        }


        [HttpGet]
        public IActionResult Get()
        {
            return Ok(TypeClothesService.GetList());
        }
        [HttpGet("id")]
        public IActionResult GetById(int id)
        {
            return Ok(TypeClothesService.GetById(id));
        }
        [HttpPost]
        public async Task<IActionResult> Insert(TypeClothes TypeClothesEx)
        {
            return Ok(TypeClothesService.Add(TypeClothesEx));
        }
        [HttpPut]
        public async Task<IActionResult> Update(int id, TypeClothes typeClothesEx)
        {
            return Ok(TypeClothesService.Update(id, typeClothesEx));
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            return Ok(TypeClothesService.Delete(id));
        }
    }
}
