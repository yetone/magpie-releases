class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4925/magpie-cli-darwin-arm64"
      sha256 "52368c622b5bea126d023c687d186f36dcb8ecd492989040024275fbf26ac6a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4925/magpie-cli-darwin-amd64"
      sha256 "4b30ec4d0a61ce185e0e63606dd91bd7fede517f4502f22045ff650ac450a4ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4925/magpie-cli-linux-arm64"
      sha256 "f856a5a2df062989227e98071f58acdb06b6cbf501fe7f7621ed9bf3f20e136c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4925/magpie-cli-linux-amd64"
      sha256 "34b02ad554f5a7dfceccecd3cc6b58fc2c0cfc20837cfa710b0f09236d1a34b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
