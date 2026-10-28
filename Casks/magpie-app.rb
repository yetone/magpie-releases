cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1946"
  sha256 arm:   "6b38e004f41006b69f487f2166135bcdcf1f63283a3a4379ea57ba87f4d4ec22",
         intel: "5bc85c13d7a8114933a8e2830bec48dc603cb339ed5d453aca0e79cc82a9479a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
