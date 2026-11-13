class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4086/magpie-cli-darwin-arm64"
      sha256 "da41783e454acd9dd6f84f9a94a726630fb04bda8f069bcc7b7026810fd64637"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4086/magpie-cli-darwin-amd64"
      sha256 "1083a64b56619acb1c835facad789324c82d3b9235d85e1b761bd88fb060bc51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4086/magpie-cli-linux-arm64"
      sha256 "c794ec47d362b4df031fd2de91cfa40b0dc13bec6bab3eeb74a35dfc0192d0e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4086/magpie-cli-linux-amd64"
      sha256 "5d4150d47f4f5494d67a294fddc7390c9f768d356afec99e8bc5ca44d37eecee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
