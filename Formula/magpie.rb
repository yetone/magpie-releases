class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.937/magpie-cli-darwin-arm64"
      sha256 "f1d7959326aedee58e7cf7bfe7ea8d98d1373c4aa0d42f6e6be391ba640842ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.937/magpie-cli-darwin-amd64"
      sha256 "02b3096b9f905f8388abe861cae6d6b59d0c9b6880bc58ba17baf7d8324265f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.937/magpie-cli-linux-arm64"
      sha256 "29445a7ba435071c453f77cf79d46196ce444f5b97fc4647b50789c60bcb79b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.937/magpie-cli-linux-amd64"
      sha256 "c5c29b648f278a695577b0d88dbc42614b0a51cf6b2cca0749b06b4f69995f77"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
