async function loadProducts(searchTerm = '') {
    const res = await fetch(`http://localhost:5000/api/products?search=${searchTerm}`);
    const products = await res.json();
  
    const productGrid = document.getElementById('products');
    productGrid.innerHTML = '';
  
    products.forEach(product => {
      const div = document.createElement('div');
      div.className = 'product';
      div.innerHTML = `
        <img src="${product.image || 'https://via.placeholder.com/300x180'}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>$${product.price}</p>
        <button onclick='addToCart(${JSON.stringify(product)})'>Add to Cart</button>
      `;
      productGrid.appendChild(div);
    });
  }
  
  function addToCart(product) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart.push(product);
    localStorage.setItem('cart', JSON.stringify(cart));
    alert(`${product.name} added to cart.`);
  }
  
  document.getElementById('search').addEventListener('input', e => {
    loadProducts(e.target.value);
  });
  
  loadProducts();  