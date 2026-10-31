class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2479/magpie-cli-darwin-arm64"
      sha256 "63073e00cc030b55bcefe3e4001a823ee765e5e099edb15305b0021e8d7b6751"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2479/magpie-cli-darwin-amd64"
      sha256 "327741e59b9fedfc9576f2a65614f6193ed84413582331ef0647c3a17a237f8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2479/magpie-cli-linux-arm64"
      sha256 "390d8790c2080c27affdc45c0b51dc4661aa5dd035176774fbf49ca3d724f123"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2479/magpie-cli-linux-amd64"
      sha256 "e9d2e07ac251045209661df0df56a8c183abd91a27aa006b59cbfabc2ace772a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
