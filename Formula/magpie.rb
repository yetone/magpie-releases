class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4259/magpie-cli-darwin-arm64"
      sha256 "bd2a6f590b9d094acbb4c5afd5c5292e64ac8de0c5e2bc845c8c4eceac0f4908"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4259/magpie-cli-darwin-amd64"
      sha256 "77ae54670ba9ed0b5b14fce4264df712c1c88be929268ffbc0b12784fbd57ce8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4259/magpie-cli-linux-arm64"
      sha256 "1d31c273ced50cb83c9299c8ba47917c40a46139afd1ed80c5e5cee940b23071"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4259/magpie-cli-linux-amd64"
      sha256 "a33497c3e9b931e2efe5f79bb8afb5f2671ab35575bb45e2c44593ea774d5983"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
