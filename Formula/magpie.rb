class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.979/magpie-cli-darwin-arm64"
      sha256 "74d4df3141c5d1808369d1a449a9f6eaa5b7894e48458d3653e2f22747004f07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.979/magpie-cli-darwin-amd64"
      sha256 "9154bad134acbdfff1b84402904b2defb06ec81b0cc944c301bdd74107473eaf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.979/magpie-cli-linux-arm64"
      sha256 "d4c4861413991d621713ff520496395ccc6abed16f8ebda30bf8858247887df6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.979/magpie-cli-linux-amd64"
      sha256 "24097cdf509b4d880a9cd2b6f4d344db8824f0e36ff339fb1a051ce898689973"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
