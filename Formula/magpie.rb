class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1024/magpie-cli-darwin-arm64"
      sha256 "5416f0367f9fbcd5d619811f2d8dd336a8dd784e66f892e5460c05740e42f1a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1024/magpie-cli-darwin-amd64"
      sha256 "412acc78dddbc2a23308734eb7fc49a5b5056758bf68256624593eebfc8d6167"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1024/magpie-cli-linux-arm64"
      sha256 "6652c4c21e9ad37002b1c725e3d5099df1b7fcc0abc4555051d90a4c756bd4ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1024/magpie-cli-linux-amd64"
      sha256 "2420eeae542b6c68affd652ede55a5af64eddfcb75c29863b465673a519c1e27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
