class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3137/magpie-cli-darwin-arm64"
      sha256 "86e373d0b629a9548f47011a7a7445b3bb5148a509dc65c367f7c78683deff72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3137/magpie-cli-darwin-amd64"
      sha256 "49e185c1a4b99ab449163f60c59509fc25315cfe1eaefb14458115bbc0fa63bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3137/magpie-cli-linux-arm64"
      sha256 "700b5c946b8959c55971089a5e5ea138effcf1ed266495b761d3bfccfbd80f5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3137/magpie-cli-linux-amd64"
      sha256 "f498c1690e12de96460a8398a74cd9409a898e2b6df5c4c48f1c204ae2706d0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
