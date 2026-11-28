class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5049/magpie-cli-darwin-arm64"
      sha256 "ec843e6e825a7defe5926a0cdef51e4061d76bc700b64ca0f1c04a4dc199c203"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5049/magpie-cli-darwin-amd64"
      sha256 "ef0f4b7aa87f8a2a61f49adde0a22c9ff8e4a6057709f5c70af81706953d5173"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5049/magpie-cli-linux-arm64"
      sha256 "449d21fed8948357ffb7b82b27ea44b3c782d631b4901babe4769caa0d8fd1b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5049/magpie-cli-linux-amd64"
      sha256 "7a047d8891e85932e23ff0a9c7548e9f885d2fe76ab1e90241ba79f1805e487e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
