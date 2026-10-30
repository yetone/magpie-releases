class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2185/magpie-cli-darwin-arm64"
      sha256 "b8d0bc66a83e01bf4c42458568eea695521acf0b4953f0cd40d9ac03887e2947"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2185/magpie-cli-darwin-amd64"
      sha256 "9f9c2805231710575b83c54556d11e5161ee4dfb07d2781041721bbc47bff4a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2185/magpie-cli-linux-arm64"
      sha256 "8b24b7c34b0f58918a8af67df49100859393659109cb0de5b9a820bf5505e3af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2185/magpie-cli-linux-amd64"
      sha256 "1da9111c7528f6aeb376b4a1bc2c9e7b6e56753ce73694b81f7ad10de6b5237b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
