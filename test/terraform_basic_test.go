// file: ec2_vpc_test.go
package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestEC2VPC(t *testing.T) {
	// t.Parallel() // Run test in parallel with others

	// Terraform options
	terraformOptions := &terraform.Options{
    TerraformDir: "../example/basic",
	}


	// Destroy infrastructure at the end of the test
	defer terraform.Destroy(t, terraformOptions)

	// Initialize and apply Terraform
	terraform.InitAndApply(t, terraformOptions)

	// Fetch outputs
	instanceIDs := terraform.OutputList(t, terraformOptions, "instance_ids")
	publicIPs := terraform.OutputList(t, terraformOptions, "public_ips")

	// Assertions
	assert.NotEmpty(t, instanceIDs, "EC2 instance IDs should not be empty")
	assert.NotEmpty(t, publicIPs, "EC2 public IPs should not be empty")

	// Optional: print outputs
	t.Logf("EC2 instance IDs: %v", instanceIDs)
	t.Logf("EC2 public IPs: %v", publicIPs)
}