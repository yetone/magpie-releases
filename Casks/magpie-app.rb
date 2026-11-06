cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3080"
  sha256 arm:   "34cdf90c45672d3c3ac637e8e576483d7fa1bedb47ac35deda8e6435f3fce44f",
         intel: "322ba82c2f042ea3c1bc088749da76da1e92e93052a4bb45d7fde6b684e94f71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
