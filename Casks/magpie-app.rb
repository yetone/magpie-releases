cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2685"
  sha256 arm:   "a519e2b2c819a3765baa0b8488f215bfb393667ff2c907b7d75e4837b62bd176",
         intel: "da3bef7e9d2fdc6e48d30ef4414c60ea20159266616b3eb492938db79b8c1833"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
