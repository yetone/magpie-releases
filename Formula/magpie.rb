class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1846/magpie-cli-darwin-arm64"
      sha256 "9f8686a421b4578cad37de7970b3507196faad28e43805a9508cc28ed233dc42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1846/magpie-cli-darwin-amd64"
      sha256 "e0559ed2880fd0b26e8216facd6a81f79cc129da47eee5503919e296a50ceaa5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1846/magpie-cli-linux-arm64"
      sha256 "c11ad19fe772f23838976c425887d877ced70b46fef4dcad9b4cbd5a6f91c94a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1846/magpie-cli-linux-amd64"
      sha256 "e006a1101432a0f214a83343cdd3c34de36ace53a39247d4b1cbfa3b9442c005"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
