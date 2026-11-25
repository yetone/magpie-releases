class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4781/magpie-cli-darwin-arm64"
      sha256 "c89f3e52cfde13cd2a8a123835f3bf626a3e9e78bdf58e514411b5bdd6eb0e2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4781/magpie-cli-darwin-amd64"
      sha256 "c53407175e43eaf528a897256ee89d2609baa53e65aac59fe989cf5ab56c11d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4781/magpie-cli-linux-arm64"
      sha256 "49241c80996789bf2e54dc72c4f25e9631600e85f07bafaf1f0673d7dcd39c51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4781/magpie-cli-linux-amd64"
      sha256 "419323fdedf204265870b000c932101215a553491296cc6d439211781c67a57c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
