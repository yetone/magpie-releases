cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4133"
  sha256 arm:   "2ac441ece7e080e98b77fc5994ff76c2b91be4462046f1d97909d7378e99e154",
         intel: "d5cb8c1d9aab7ed6f56940712e23b3464cefd5137b57287499e10fbe4f1f491a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
