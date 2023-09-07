using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PowerUpController : MonoBehaviour
{
      public int healthAmount = 20; // Amount of health to restore

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            // Assuming your player has a HealthController script
            HealthController playerHealth = other.GetComponent<HealthController>();
            
            if (playerHealth != null)
            {
                // Apply the power-up effect by increasing player's health
                playerHealth.RestoreHealth(healthAmount);

                // Destroy the power-up object
                Destroy(gameObject);
            }
        }
    }
}
