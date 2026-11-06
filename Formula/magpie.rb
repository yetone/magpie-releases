class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3119/magpie-cli-darwin-arm64"
      sha256 "ee12f5612aeb9c22cff62df617dd91ffdccaa298b98b5b19960c9fb49df7c587"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3119/magpie-cli-darwin-amd64"
      sha256 "5576aae26982e673463bb1753fffb109440c066dbb00bc370aebbead19fc7244"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3119/magpie-cli-linux-arm64"
      sha256 "ed4190a7db6371b1fda2d1befceacd5d1287d6845b9047533418423663732c32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3119/magpie-cli-linux-amd64"
      sha256 "a6b793254871aa05d194fa3df6de833177b75d8d3ff941bd6545d3c175598106"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
