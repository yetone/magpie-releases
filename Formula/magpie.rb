class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2000/magpie-cli-darwin-arm64"
      sha256 "638708ba159b87e441f8a23fe8869011378d51db2c8d197e492bc9ef0a3c95c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2000/magpie-cli-darwin-amd64"
      sha256 "70c66f82a56e782300679da8fc1f30039206eb4200a954610c4efd3feae9b865"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2000/magpie-cli-linux-arm64"
      sha256 "09c8702f5dc7fec44c448a1cd1ca2e82e5404859777fb61cb91bcd18080577bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2000/magpie-cli-linux-amd64"
      sha256 "c91539c70d99b2cda39ffbfdc944212ef27c4d0285ea74bc4b6de73a2bf6b714"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
