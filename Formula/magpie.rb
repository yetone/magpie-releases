class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4638/magpie-cli-darwin-arm64"
      sha256 "0dd30c079430964b371519047eb6f5f2013bb452c241c1263e4a883486582709"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4638/magpie-cli-darwin-amd64"
      sha256 "6e7c0d4154ec76709b25e21d08a81307cea206155686fddde194a592d995a823"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4638/magpie-cli-linux-arm64"
      sha256 "fd8acb3ed3ac16f8f5a4b05104a750de2f0dce56500cc1bb7a77d0651f636387"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4638/magpie-cli-linux-amd64"
      sha256 "ebccb8bfecbe682ded566e472f201c76fbe728cb78ef24cbf95ebf56853aa964"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
