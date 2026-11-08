cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3315"
  sha256 arm:   "826f546f50fe8225ee2c59e80d5b1a6195607f4ed8464d6d8c912d3b581088a2",
         intel: "92e94fd1e92d675e8abde05e16f7b71c44cb45636449a30fd107904e9221fb33"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
