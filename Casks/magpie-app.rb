cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2645"
  sha256 arm:   "2eafd1e7a13a1e31bb71fa6ecb4ed7f992c6d1e2052952e92f7a7505c2d136bf",
         intel: "4670221a2913f23cae57cebfb9610d325ac5737e0f8df7b23f0a2a88c592a84e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
