class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4323/magpie-cli-darwin-arm64"
      sha256 "18c0086659851c54a52126eae7ef0d6b46398a68eebd170c7dfe8c96a322de1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4323/magpie-cli-darwin-amd64"
      sha256 "0c5c490d27d27fc65afc77fb3fcd050e843f197ea773de930b036731266d255f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4323/magpie-cli-linux-arm64"
      sha256 "0c611e813050d903c90dbb53899993ef33f8a75750cd454576224b8190b6bc8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4323/magpie-cli-linux-amd64"
      sha256 "41f2e814869a11e5dffa1a84d1dc358ea5393fff810d5771e51c5f3b196f85a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
