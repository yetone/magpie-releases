class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1837/magpie-cli-darwin-arm64"
      sha256 "6464e821760c99bda0b0d87320b969be50bbd41cfc3a133f512c562df126d889"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1837/magpie-cli-darwin-amd64"
      sha256 "13f7b593d8692361ac6a82f0f5878c22f6bac0ce53f07236ebbfe441175ddf5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1837/magpie-cli-linux-arm64"
      sha256 "08fefdddcc28cd2b8eab9844343b9c531d0c3bebd2adfdff37fd13d8d2e8e873"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1837/magpie-cli-linux-amd64"
      sha256 "210907d9032d158599b4467fe09f19621baabf29a866d0f284dd9679f8bfa157"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
