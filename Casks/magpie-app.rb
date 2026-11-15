cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4225"
  sha256 arm:   "6ab946d85c1a0624f39fe38760f3b709844439cc2aaa43e17b38cfef020047f5",
         intel: "129980f78df4be5d414a4f9716f1457ca1e94785195f98b877feb35fd5360e13"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
