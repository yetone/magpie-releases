class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4334/magpie-cli-darwin-arm64"
      sha256 "09eaa0d6223ca7b282962e67ceef3d583d975ed9d079262e7a32cfb883964ac7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4334/magpie-cli-darwin-amd64"
      sha256 "5bb0c5fe461ca497d86fe9a5b60054544e93d87d3e5ef12587580a2e69f9de22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4334/magpie-cli-linux-arm64"
      sha256 "6460fac73800051a306681783c5bd5520c26706e8bc8badeb276d8f2fb2d9222"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4334/magpie-cli-linux-amd64"
      sha256 "d5833787aec63edbc190916f630aa456eaf1669493dcf5cda97ea38c7ee723b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
