class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2267/magpie-cli-darwin-arm64"
      sha256 "82edf92d738d932d3bb5b2d6063298c6d99fcf0d159aab086bd25addd50d6e23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2267/magpie-cli-darwin-amd64"
      sha256 "9b8ef37921a00eff31a9084e92e503f65f65c7df9bcdcabb1b7df9a6709a36fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2267/magpie-cli-linux-arm64"
      sha256 "541a36518f9c546e907c39fa453b7f0af4d8ff2203e2a9c1ee873d0268cfab9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2267/magpie-cli-linux-amd64"
      sha256 "8e3e28bcb41a51806b7a95a3524464c44e999627146f53d322c1b967899f58c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
