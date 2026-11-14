class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4213/magpie-cli-darwin-arm64"
      sha256 "9e9d8df353e78be8cbf5fd1a98474a1171998e5c87725a0d1056ce4697d74220"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4213/magpie-cli-darwin-amd64"
      sha256 "34c8ce558efb62e26ffa7add8666bf0e3512507da4c24ae196bb7eff3980185b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4213/magpie-cli-linux-arm64"
      sha256 "cbfcdf743f688005924e853dc7955443719a75361596fe11ca0cbc36a5c64570"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4213/magpie-cli-linux-amd64"
      sha256 "dbb34f6c19521274a42b0b91fdc476236f75d453daf9f58031538e6e2652cd99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
