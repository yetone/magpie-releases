class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2126/magpie-cli-darwin-arm64"
      sha256 "ea84f2bc0aa3286400ce9e95b37bbd179697d54f7af167d085fcbc2dd3df6a93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2126/magpie-cli-darwin-amd64"
      sha256 "f8b3468eefb634493487751c2f5659eb83b0b6b606ddd1338abd7a0e0a6338c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2126/magpie-cli-linux-arm64"
      sha256 "715ae4d417d6ad317a9e14149281832d0c0545a6ac836e273260c5316ab534fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2126/magpie-cli-linux-amd64"
      sha256 "03b067d7598ad3a85e70886be40a557d02e376bb2eb61aad76539bd1adba49ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
