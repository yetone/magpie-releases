class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3944/magpie-cli-darwin-arm64"
      sha256 "98493373b77ffdfe2aa5b1f42123098133b3ccf8d7598860e3d530aa7028e85e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3944/magpie-cli-darwin-amd64"
      sha256 "3e37e1fa498c2967be4180b937a9d0e17145022f20a5a9fa9f4421cb0621c13d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3944/magpie-cli-linux-arm64"
      sha256 "46324e170b9c4994f322ed6e330edcc8292e6dc48a81c4c3090efa5f51048a28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3944/magpie-cli-linux-amd64"
      sha256 "1650535a46adaa413e0faa909a7599ae90fa6c27a2be81b3dfea861e8a804a86"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
