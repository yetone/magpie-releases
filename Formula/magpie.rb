class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4690/magpie-cli-darwin-arm64"
      sha256 "3734aca9b8df19f1b4d6dfc8e4ebfc45779fc68d1bac0b7f84d3980d8ab983dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4690/magpie-cli-darwin-amd64"
      sha256 "53ffbc8d89cd397a0f60a19fd36ce8ad3d6eb4bd5c7742a4264b08244ccbc0b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4690/magpie-cli-linux-arm64"
      sha256 "25642043fd39fef6483f79333915e1b13a2997d8517681ef71a6ffa8e985075c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4690/magpie-cli-linux-amd64"
      sha256 "fb47d28079541d682db3a8b8f526362296d97e796f28de331fa05af25af2ee6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
