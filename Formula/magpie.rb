class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3281/magpie-cli-darwin-arm64"
      sha256 "f10d62d041d76e539c96b14743815e4d9635f17eb8b0b266719cac2fb71133e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3281/magpie-cli-darwin-amd64"
      sha256 "9eafd0f639defa6de65642f5520562db49477ea880c456282f21f195c5af0ff6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3281/magpie-cli-linux-arm64"
      sha256 "5689d45cd9bd322d2bef6231501cc87f4d69184d2eeacda71f55b3b00b7029de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3281/magpie-cli-linux-amd64"
      sha256 "72810d69602165f2832df0bcf910269746a0351d35cb24ec2a32a92af9970e8d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
