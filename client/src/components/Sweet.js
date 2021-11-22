function Sweet({ sweet, onRemoveSweet }) {
  function handleRemoveSweet() {
    fetch(`/vendor_sweets/${sweet.id}`, {
      method: "DELETE",
    }).then((r) => {
      if (r.ok) {
        r.json().then((sweet) => onRemoveSweet(sweet));
      } else {
        r.json().then((err) => alert(err.errors));
      }
    });
  }

  return (
    <li>
      <span>
        {sweet.name} | ${(sweet.price / 100).toFixed(2)}
      </span>
      <button onClick={() => handleRemoveSweet(sweet)}>Delete</button>
    </li>
  );
}

export default Sweet;
