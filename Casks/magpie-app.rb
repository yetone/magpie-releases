cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3720"
  sha256 arm:   "11ffb24ad5ede87d9fad992a3c81614180d59808321915c2a0b90d53dd5e4794",
         intel: "b044b64ecbcc7e78c996f9f3aeb04fdf61e9d6c9c93d12a9108dc574bbe883dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
