cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2287"
  sha256 arm:   "bd76d7bb3b431f74fe80365b1a1ffa23da69495d3cc3b4326e47dc5a65dc0043",
         intel: "7a63bef22dcdaf84db62c1f736e27498e0085d77fbfa7111b49564cb6ce57878"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
