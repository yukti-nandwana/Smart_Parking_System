document.addEventListener("DOMContentLoaded", function () {
    const checkSlotsBtn = document.querySelector("button");

    checkSlotsBtn.addEventListener("click", function () {
        alert("Checking available parking slots...");
    });
});

// Array of parking slots (0 = occupied, 1 = available)
const slots = [1, 0, 1, 1, 0, 1, 1, 0, 1, 1];

// Function to display parking slots
function displayParkingSlots() {
    const parkingDiv = document.getElementById("parking-slots");
    parkingDiv.innerHTML = ""; // Clear previous slots

    slots.forEach((slot, index) => {
        const slotDiv = document.createElement("div");
        slotDiv.textContent = `Slot ${index + 1}`;
        slotDiv.style.padding = "10px";
        slotDiv.style.margin = "5px";
        slotDiv.style.display = "inline-block";
        slotDiv.style.border = "2px solid black";
        slotDiv.style.borderRadius = "5px";
        slotDiv.style.backgroundColor = slot ? "green" : "red";
        slotDiv.style.color = "white";
        slotDiv.style.cursor = "pointer"; // Clickable

        // Add Click Event
        slotDiv.addEventListener("click", function () {
            slots[index] = slots[index] ? 0 : 1; // Toggle Slot Status
            displayParkingSlots(); // Refresh UI
        });

        parkingDiv.appendChild(slotDiv);
    });
}

// Call the function to show slots when page loads
window.onload = displayParkingSlots;

