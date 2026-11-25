cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4784"
  sha256 arm:   "c778c9edd2ce3aa013659fee2e0f87d6ca8c55708fcd16e03a8337303c037f7c",
         intel: "19d6d4233023aec86af322d5ca1ecd7fc0474c2ef6ec23680703ad3260201e20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
