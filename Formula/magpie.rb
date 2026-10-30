class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2279/magpie-cli-darwin-arm64"
      sha256 "896533f3f334301b3f855a47d2d780324a2963c61b8f4c8f121ec2e8d567d7b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2279/magpie-cli-darwin-amd64"
      sha256 "8dfed0cfe71b0f66d6346bff88abe01ffee0b25889f7416b2f7be323bff14dd7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2279/magpie-cli-linux-arm64"
      sha256 "32daf3f28ab5d9efa5ed8d372258825a12b8affb24393e1bc5f84d75fc91b4c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2279/magpie-cli-linux-amd64"
      sha256 "4ec2ca73c026fce0124b5cdc1d7108d2ebb5906d6e366b9aee90e84ff67e4f89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
