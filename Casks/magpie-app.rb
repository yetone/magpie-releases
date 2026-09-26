cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.131"
  sha256 arm:   "00c7fe5fdb23a4459a05fde2f312e538316fe17663ffb3108c3716a277d06bf4",
         intel: "3b1d8f18918dfd4cc5f78bef08a981a6a772523f83e5011933e940dc281d5aa1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
