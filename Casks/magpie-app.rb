cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2770"
  sha256 arm:   "98bccd4323c53bd165c7e91c811dc35e26fa9fa8b6b8e2c89e2c2d5a8897904b",
         intel: "394ea8ab703e8e0a10ad6e9227cc7e0117c8f55d5e3b56a0e5e5cdcc6752b62d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
