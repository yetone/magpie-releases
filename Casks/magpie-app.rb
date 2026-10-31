cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2383"
  sha256 arm:   "f11efe1ba011b82d08f0f643b13504b7f8d874eb53f3e8bb94a3c74fa30d46a6",
         intel: "f3ed990f3d62befa39106b6a29049382906843a10a8cf538df92dd789b483c20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
