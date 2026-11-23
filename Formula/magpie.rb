class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4692/magpie-cli-darwin-arm64"
      sha256 "0e60108d1979a524dfdaf52899cb8b62704ed896704e6b378ee48ff63c10f3ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4692/magpie-cli-darwin-amd64"
      sha256 "947ed074c2d0f0e147b81e119829c1e2b76cf03ede651fd317378d05635223e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4692/magpie-cli-linux-arm64"
      sha256 "bed3d9b67c7bfa225cb473d74f8bc3721cfad9e55fbed8230242f7412580a728"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4692/magpie-cli-linux-amd64"
      sha256 "e10767558b67afcc0f716a24b99797e52f06d0da353b30bdf1ec2bc5efd649a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
