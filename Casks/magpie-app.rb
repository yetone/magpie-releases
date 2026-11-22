cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4684"
  sha256 arm:   "6fe5a44ca66479c2e5bcaeb3785c6c46022c0113238558f053e5ba5245cbc361",
         intel: "87581f1cf8afe96b2bb362c03d7295b62e3cc4b10c2d6eaf5f74e69734f480c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
