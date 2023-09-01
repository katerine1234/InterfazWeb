/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SmallPacket;

/**
 *
 * @author Katerine Forero
 */
public class Operations {
   
    private int bigDog = 10000;
    private int mediumDog = 5000;
    private int smallDog = 3000;
    private double discount = 0.1;

    public int calculateTotal(int numBigDog, int numMediumDog, int numSmallDog, int hours) {
        int totalCost = (numBigDog * bigDog) +
                        (numMediumDog * mediumDog) +
                        (numSmallDog * smallDog);

        if (numBigDog + numMediumDog + numSmallDog > 1) {
            totalCost -= totalCost * discount;
        }

        return hours * totalCost;
    }
}

