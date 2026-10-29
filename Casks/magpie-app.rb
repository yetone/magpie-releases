cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2046"
  sha256 arm:   "f72a3d0781159b81d0f6bf5d735d3debad00f3535f47551e644720dd7ab6fc01",
         intel: "5d8353590b3b2158c0c0f1dc5444e1655161174bb9c77789b605dc93e51cbb68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
