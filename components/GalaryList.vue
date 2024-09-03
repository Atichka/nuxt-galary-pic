<template>
  <ul class="pictures">
    <li v-for="picture in pictures" :key="picture.id" class="picture-item">
      <div class="picture">
        <img class="picture__photo" :src="`${picture.image}`" />
        <p class="picture__text">{{ picture.text }}</p>
      </div>
    </li>
  </ul>
</template>

<script>
export default {
  name: "GalaryList",
  data: () => ({
    pictures: [
      {
        id: 1,
        image: '../static/images/222.jpg',
        text: 'Медведи'
      },
      {
        id: 2,
        image: '../static/images/8055.jpeg',
        text: 'Белка'
      },
      {
        id: 3,
        image: '../static/images/4173.jpg',
        text: 'Еноты'
      },
      {
        id: 4,
        image: '../static/images/111.jpg',
        text: 'Львы'
      },
      {
        id: 5,
        image: '../static/images/333.jpg',
        text: 'Тигр'
      }
    ]
  }),
}
</script>

<style scoped>
.pictures {
  list-style-type: none;
  padding: 0;
  display: grid;
  grid-gap: 40px;
  grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
  margin-bottom: 70px;
}
.picture {
  cursor: pointer;
  display: flex;
  flex-direction: column;
  text-decoration: none;
  transition: transform 0.3s, box-shadow 0.8s;
}
.picture:hover {
  transition: box-shadow 0.8s, transform 0.3s;
  box-shadow: 20px 20px 30px -10px #192824;
  transform: scale(1.1, 1.1);
}
.picture:hover::after {
  opacity: 1;
}
@media screen and (max-width: 1024px) {
  .picture__photo {
    margin-bottom: 16px;
  }
  .picture__text {
    font-size: 13px;
    line-height: 16px;
  }
}
@media screen and (max-width: 420px) {
  .picture-item {
    margin-bottom: 30px;
  }
  .picture-item:last-child {
    margin-bottom: 0;
  }
  .picture__photo {
    width: 50px;
    padding-bottom: 100%;
    background-size: cover;
    margin-bottom: 20px;
  }
  .picture__text {
    font-style: normal;
    font-weight: normal;
    font-size: 14px;
    line-height: 18px;
    color: #666;
  }
}
</style>
