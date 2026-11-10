class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3640/magpie-cli-darwin-arm64"
      sha256 "931494c5a0c6f16206759cbd662349734bdb7fd375a8f8e7f07e53b71a8b2f18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3640/magpie-cli-darwin-amd64"
      sha256 "9ec35a7824843582a0838baabd0a75f819fd841bbd0a736367ac40ce84e77867"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3640/magpie-cli-linux-arm64"
      sha256 "fb804e8e77debf2c274158952fe7ffbec9f51602e54317a3165280ca20ba31b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3640/magpie-cli-linux-amd64"
      sha256 "5fe8286d7fe7c2ab287d61300edc14f997f107b7ef659aefca6775d75e1efd57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
