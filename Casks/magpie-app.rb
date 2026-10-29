cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2071"
  sha256 arm:   "bc63e2a2e63808712002ab6ece6ce81bb9611a1d528ea93c3ae21c6e52362bcd",
         intel: "003a298f7411ddd7b453e87d683424f0e687406b8fb327ddc1f558c3ddf694a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
